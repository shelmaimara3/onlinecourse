<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\Teacher;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Models\CourseStudent;
use App\Models\SubscribeTransaction;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    //
    public function index(){

        $user = Auth::user();
        $coursesQuery = Course::query();

        // data yang ditampilkan apabila login sbg teacher
        if($user->hasRole('teacher')){
            $coursesQuery->whereHas('teacher', function ($query) use ($user) {
                $query->where('user_id', $user->id);
            });
            $students = CourseStudent::whereIn('course_id', $coursesQuery->select('id'))
            ->distinct('user_id') //membuat data menjadi lebih unik
            ->count('user_id'); //menghitung kelas untuk user yg sama
        } else {
            // data yang ditampilkan apabila login sbg owner
            $students = CourseStudent::distinct('user_id')
            ->count('user_id');
        }

        $courses = $coursesQuery->count();
        $categories = Category::count();
        $transactions = SubscribeTransaction::count();
        $teachers = Teacher::count();

        return view('dashboard', compact('categories', 'courses', 'transactions', 'students', 'teachers'));
    }
}

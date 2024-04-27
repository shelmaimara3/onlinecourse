<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $ownerRole = Role::create([
            'name' => 'owner'
        ]); 

        $studentRole = Role::create([
            'name' => 'student'
        ]);

        $teacherRole = Role::create([
            'name' => 'teacher'
        ]);

        // akun super admin untuk mengelola data awal
        // data kategori, kelas, dsb
        $userOwner = User::create([
            'name' => 'Shelma Bakir',
            'occupation' => 'Educator',
            'avatar' => 'images/default-avatar.png',
            'email' => 'shelma@owner.com',
            'password' => bcrypt('123456789'),
        ]);

        $userOwner->assignRole($ownerRole);
    }
}

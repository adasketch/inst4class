<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash; // Wajib di-import untuk enkripsi password

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // 1. Akun Admin
        User::create([
            'username'      => 'adamhs',
            'password'      => Hash::make('adam123'),
            'role'          => 'admin',
            'name'          => 'Adam Admin',
            'nim'           => null,
            'study_program' => null,
            'whatsapp_number' => null,
            'ktm_photo_path'  => null,
        ]);

        // 2. Akun Mahasiswa
        User::create([
            'username'      => 'ahmaddewa',
            'password'      => Hash::make('dewa123'),
            'role'          => 'mahasiswa',
            'name'          => 'Ahmad Dewa',
            'nim'           => '1301190001',
            'study_program' => 'Teknologi Informasi',
            'whatsapp_number' => '081234567890',
            'ktm_photo_path'  => null,
        ]);



    }
}

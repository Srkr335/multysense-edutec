<?php

  

namespace Database\Seeders;

  

use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use Illuminate\Database\Seeder;

use Spatie\Permission\Models\Permission;

  

class PermissionTableSeeder extends Seeder

{

    /**

     * Run the database seeds.

     */

    public function run(): void

    {

        $permissions = [
            ['name' => 'role_list', 'guard_name' => 'web','section' => 'roles'],
            ['name' => 'role_create', 'guard_name' => 'web','section' => 'roles'],
            ['name' => 'role_edit', 'guard_name' => 'web','section' => 'roles'],
            ['name' => 'role_delete', 'guard_name' => 'web','section' => 'roles'],
            ['name' => 'dashboard_view', 'guard_name' => 'web','section' => 'dashboard'],
            ['name' => 'centre_list', 'guard_name' => 'web','section' => 'centre'],
            ['name' => 'centre_create', 'guard_name' => 'web','section' => 'centre'],
            ['name' => 'centre_edit', 'guard_name' => 'web','section' => 'centre'],
            ['name' => 'centre_delete', 'guard_name' => 'web','section' => 'centre'],
            ['name' => 'courses_list', 'guard_name' => 'web','section' => 'course'],
            ['name' => 'courses_create', 'guard_name' => 'web','section' => 'course'],
            ['name' => 'courses_edit', 'guard_name' => 'web','section' => 'course'],
            ['name' => 'courses_delete', 'guard_name' => 'web','section' => 'course'],

        ];

        

        foreach ($permissions as $permission) {
            Permission::create($permission);
        }

    }

}
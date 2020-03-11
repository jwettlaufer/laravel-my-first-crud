<?php

use Illuminate\Database\Seeder;
use App\Teams;
use App\User;
use Faker\Factory;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker = Factory::create();

        foreach( range( 1, 15 ) as $index ) {
            $user = new User;
            $user->name = $faker->name;
            $user->email = $faker->email;
            $user->password = 'password';
            $user->age = rand(13, 65);
            $user->save();
      }
    }
}

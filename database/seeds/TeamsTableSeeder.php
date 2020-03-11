<?php

use Illuminate\Database\Seeder;
use App\Teams;
use App\User;
use Faker\Factory;

class TeamsTableSeeder extends Seeder
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

        $users = User::all();

        $numberOfUsers = count( $users );
        foreach ( $users as $user ) {
            Teams::create( ['title' => $faker->safeColorName] )
                ->users() // Attaching random users
                ->attach( rand( 1, $numberOfUsers ) );
              }
    }
}

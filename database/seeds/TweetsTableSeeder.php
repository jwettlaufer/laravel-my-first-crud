<?php

use Illuminate\Database\Seeder;
use Faker\Factory; // Don't forget to pull in Faker.

class TweetsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *We can seeed specfic data direcly!
     *This can me good for testing, but can be cumbersome.
     *Great for default configurations if you have an application "options" or "settings" table.
     * @return void
     */
    public function run()
    {
        //First Tweet
        DB::table('tweets')->insert(array(
          'author' => 'Bob',
          'message' => 'My first tweet!'
        ));

        //Second Tweet
        DB::table('tweets')->insert(array(
          'author' => 'Sarah',
          'message' => 'Hello, world!'
        ));

        //Third Tweet
        DB::table('tweets')->insert(array(
          'author' => 'Sam',
          'message' => 'Yo! Sup?'
        ));

        //Let's try faker to prepopulate with lots of imaginary data quickly!

        $faker = Faker::create();
        DB::table('tweets')->insert(array(

          'author'=>$faker->name,
          'message'=>$faker->catchphrase
        ));

    }
}

<?php

use Illuminate\Database\Seeder;

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
/*
        //First Tweet
        DB::table('tweets')->insert(array(
          'user_id' => rand(2,6),
          'message' => 'My first tweet!'
        ));

        //Second Tweet
        DB::table('tweets')->insert(array(
          'user_id' => rand(2,6),
          'message' => 'Hello, world!'
        ));

        //Third Tweet
        DB::table('tweets')->insert(array(
          'user_id' => rand(2,6),
          'message' => 'Yo! Sup?'
        ));

        //Let's try faker to prepopulate with lots of imaginary data quickly!

        $faker = Faker\Factory::create();

        foreach(range(1, 25) as $index){
        DB::table('tweets')->insert(array(

          'author'=>$faker->name,
          'message'=>$faker->catchphrase
        ));
      }
*/
    }
}

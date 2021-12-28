<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Predmet;
use App\Models\Profesor;
use App\Models\profesorPredmet;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
      /*  User::truncate();
        Predmet::truncate();
        Profesor::truncate();
        profesorPredmet::truncate();

        User::factory(6)->create();

        $profesors1 = Profesor::factory()->create();
        $profesors2 = Profesor::factory()->create();
        $profesors3 = Profesor::factory()->create();

        
        $pp1 = Predmet::factory()->create();
        $pp2 = Predmet::factory()->create();
        $pp3 = Predmet::factory()->create();

        profesorPredmet::factory(2)->create([
            'profesor_id'=>$profesors3->id,
            'predmet_id'=>$pp2->id,
        ]);

        profesorPredmet::factory(2)->create([
            'profesor_id'=>$profesors1->id,
            'predmet_id'=>$pp3->id,
        ]);
        profesorPredmet::factory(2)->create([
            'profesor_id'=>$profesors3->id,
            'predmet_id'=>$pp1->id,
        ]);*/

        $this->call([
            PredmetSeeder::class,
            ProfesorSeeder::class,
            profesorPredmetSeeder::class
        ]);

           
       
    }
}

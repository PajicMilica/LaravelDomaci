<?php

namespace Database\Seeders;

use App\Models\profesorPredmet;
use Illuminate\Database\Seeder;

class ProfesorPredmetSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
     
      profesorPredmet::truncate();

      $pp = [
          ['id' => 1, 'profesor_id' => 5,'predmet_id' => 2],
          ['id' => 2, 'profesor_id' => 1,'predmet_id' => 3],
          ['id' => 3, 'profesor_id' => 3,'predmet_id' => 5],
          ['id' => 4, 'profesor_id' => 2,'predmet_id' => 6],
          ['id' => 5, 'profesor_id' => 4,'predmet_id' => 4],

         
      ];
      profesorPredmet::insert($pp);
    }
}

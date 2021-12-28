<?php

namespace Database\Seeders;

use App\Models\Profesor;
use Illuminate\Database\Seeder;

class ProfesorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        Profesor::truncate();

        $profesors = [
            ['id' => 1, 'name' => 'Miloš','lastName' => 'Marković','gender' => 'muški'],
            ['id' => 2, 'name' => 'Nikola','lastName' => 'Petrović','gender' => 'muški'],
            ['id' => 3, 'name' => 'Ana','lastName' => 'Mitrović','gender' => 'ženski'],
            ['id' => 4, 'name' => 'Nevena','lastName' => 'Ristić','gender' => 'ženski'],
            ['id' => 5, 'name' => 'Dušan','lastName' => 'Lazić','gender' => 'muški'],
           
        ];
        Profesor::insert($profesors);
    }
}

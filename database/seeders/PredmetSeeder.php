<?php

namespace Database\Seeders;

use App\Models\Predmet;
use Illuminate\Database\Seeder;


class PredmetSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */

     public function test_models_can_be_instantiated()
{
    $user = User::factory()->make();

    // Use model in tests...
}
    public function run()
    {
        //DB::table('predmets')->delete();
        Predmet::truncate();
        $predmets = [
            ['id' => 1, 'name' => 'Matematika 1', 'espb'=>6],
            ['id' => 2, 'name' => 'Projektovanje softvera', 'espb'=>3],
            ['id' => 3, 'name' => 'Internet tehnologije', 'espb'=>4],
            ['id' => 4, 'name' => 'Multimediji', 'espb'=>5],
            ['id' => 5, 'name' => 'Modelovanje poslovnh procesa', 'espb'=>5],
            ['id' => 6, 'name' => 'Ekonomija', 'espb'=>6],
           
        ];
        Predmet::insert($predmets);
        
    }
}

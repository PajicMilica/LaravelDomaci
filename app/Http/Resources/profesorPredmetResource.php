<?php

namespace App\Http\Resources;

use App\Models\Profesor;
use App\Models\Predmet;
use Illuminate\Http\Resources\Json\JsonResource;

class profesorPredmetResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public static $wrap = 'Predaje';
    public function toArray($request)
    {
        return [
            'id'=>$this->resource->id,
            'Profesor'=>new ProfesorResource($this->resource->profesor),
            'Predmet'=>new PredmetResource($this->resource->predmet),
        
        ];
    }

   
}

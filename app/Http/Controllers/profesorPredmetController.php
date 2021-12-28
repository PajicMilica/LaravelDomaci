<?php

namespace App\Http\Controllers;

use App\Models\profesorPredmet;
use App\Http\Resources\profesorPredmetResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class profesorPredmetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pp = profesorPredmet::all();

        return profesorPredmetResource::collection($pp);
     
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'predmet_id' => 'required',
            'profesor_id' => 'required'
        ]);

        if ($validator->fails())
            return response()->json($validator->errors());

        $pp = profesorPredmet::create([
            'predmet_id' => $request->predmet_id,
            'profesor_id' => $request->profesor_id,
        ]);

        return response()->json(['profesorPredmet is created successfully.', new profesorPredmetResource($pp)]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\profesorPredmet  $profesorPredmet
     * @return \Illuminate\Http\Response
     */
    public function show(profesorPredmet $profesorPredmet)
    {
        return new profesorPredmetResource($profesorPredmet);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\profesorPredmet  $profesorPredmet
     * @return \Illuminate\Http\Response
     */
    public function edit(profesorPredmet $profesorPredmet)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\profesorPredmet  $profesorPredmet
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $pp=profesorPredmet ::find($id);

        $validator = Validator::make($request->all(), [
            'predmet_id' => 'required',
            'profesor_id' => 'required'
        ]);

        if ($validator->fails())
            return response()->json($validator->errors());

        $pp->predmet_id = $request->predmet_id;       
        $pp->profesor_id = $request->profesor_id;

        $pp->save();

        return response()->json(['profesorPredmet is updated successfully.', new profesorPredmetResource($pp)]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\profesorPredmet  $profesorPredmet
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        profesorPRedmet ::where('id', $id)->delete();
        return response()->json('profesorPredmet is deleted successfully.');
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\profesorPredmet;
use App\Http\Resources\profesorPredmetResource;
use Illuminate\Http\Request;

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
        //
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
    public function update(Request $request, profesorPredmet $profesorPredmet)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\profesorPredmet  $profesorPredmet
     * @return \Illuminate\Http\Response
     */
    public function destroy(profesorPredmet $profesorPredmet)
    {
        //
    }
}

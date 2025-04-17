<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Company;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/company/{id}', function ($id) {
    $company = Company::with('employees')->findOrFail($id);
    $company->employee_count = $company->employees->count();
    return response()->json($company);
});


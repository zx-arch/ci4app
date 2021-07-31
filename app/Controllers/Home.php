<?php

namespace App\Controllers;

use Database;

class Home extends BaseController
{
	public function __construct()
	{
		$this->db = \Config\Database::connect();
	}
	public function index()
	{
		$keyword = $this->request->getVar('search');
		$resultsearch = $this->db->table('komikmanga')->select("*")->where("judul LIKE '$keyword%'")->get()->getResultArray();
		$resultkomik = $this->db->table('komikmanga')->orderBy("judul", "RANDOM")->get()->getResultArray();
		// $acakkomik = [];
		// function randomGen($min, $max, $quantity)
		// {
		// 	$numbers = range($min, $max);
		// 	shuffle($numbers);
		// 	return array_slice($numbers, 0, $quantity);
		// }

		// $randomindex = randomGen(0, count($resultkomik) - 1, count($resultkomik) + 1);
		// foreach ($randomindex as $r) {
		// 	array_push($acakkomik, $resultkomik[$r]);
		// }
		if ($keyword === NULL or $keyword === '' or empty($keyword)) {
			$datahome = [
				"title" => "Halaman Home",
				"home" => $resultkomik,
				"hasil" => "tidakcaridata",
				"search" => "masihkosong"
			];
			return view('home', $datahome);
		} elseif (!empty($keyword) and !empty($resultsearch)) {
			$datahome = [
				"title" => "Halaman Home",
				"home" => $resultsearch,
				"hasil" => "cariditemukan",
				"search" => $keyword
			];
			return view('home', $datahome);
		} elseif (!empty($keyword) and empty($resultsearch)) {
			$datahome = [
				"title" => "Halaman Home",
				"home" => $resultsearch,
				"hasil" => "caritidakditemukan",
				"search" => $keyword
			];
			return view('home', $datahome);
		}
	}
}

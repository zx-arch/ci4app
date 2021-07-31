<?php

namespace App\Controllers\Manga\DataManga;

use App\Controllers\BaseController;

class OnePiece extends BaseController
{
    public function __construct()
    {
        $this->db = \Config\Database::connect();
    }
    public function index()
    {
        $resultdata = $this->db->table('komikmanga')->select("*")->whereIn("slug", ["one-piece"])->get()->getResultArray();

        $getgenre = $this->db->table('genremanga')->select("genre")->whereIn("slug", ["one-piece"])->get()->getResultArray();

        $getchapter = $this->db->table('listchaptermanga')->select("*")->whereIn("slug", ["one-piece"])->orderBy('id', 'DESC')->get()->getResultArray();

        $genr = "";
        foreach ($getgenre as $g) {
            $genr .= $g['genre'] . ", ";
        }
        $genr = substr($genr, 0, -1);
        $genr = substr($genr, 0, -1);
        $dataonepiece = [
            "title" => "Manga One Piece",
            "dataonepiece" => $resultdata,
            "genreonepiece" => $genr,
            "chapteronepiece" => $getchapter
        ];
        return view('manga/datamanga/onepiece/index', $dataonepiece);
    }
}

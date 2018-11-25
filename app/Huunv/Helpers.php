<?php
if(!function_exists('getYoutubeId')){
    function getYoutubeId($link){
        $youtubeId = substr($link, strrpos($link, '=') + 1);
        return $youtubeId;
    }
}

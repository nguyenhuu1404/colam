<?php
//57763, cb8af11461354e01e308970637dbe776, lamdaothanh305@gmail.com
return [
    /*
     * Link api duyệt thanh toán
     *
     *
     * */
    'url_api' => env('URL_API', 'https://www.nganluong.vn/checkout.api.nganluong.post.php'),

    /*
     * Mã kết nối
     *
     *
     * */
    'merchant_id' => env('MERCHANT_ID', '57763'),

    /*
     * Mật khẩu kết nối
     *
     *
     * */
    'merchant_password' => env('MERCHANT_PASSWORD', 'cb8af11461354e01e308970637dbe776'),

    /*
     * Email tài khoản Ngân Lượng
     *
     *
     * */
    'receiver_email' => env('RECEIVER_EMAIL', 'lamdaothanh305@gmail.com')
];

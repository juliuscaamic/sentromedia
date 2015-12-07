<?php
class ServicesQuoteAdmin extends ModelAdmin {

    private static $managed_models = array(
        'ServicesQuote'
    );

    private static $url_segment = 'quote';

    private static $menu_title = 'Services Quote';

    private static $menu_icon = 'mysite/images/list-icon.png';
}
<?php
class WorkFeaturedImage_Extension extends DataExtension {
    private static $belongs_many_many = array('WorkFeatures' => 'WorkFeature');
}
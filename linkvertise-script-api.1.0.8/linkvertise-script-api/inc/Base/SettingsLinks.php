<?php
/**
 * @package LinkvertiseScriptApiPlugin
 */

namespace Inc\Base;

use \Inc\Base\BaseController;

class SettingsLinks extends BaseController
{  
  public function register() {
    add_filter("plugin_action_links_$this->plugin", array($this, 'settings_link'));
  }

  public function settings_link($links) {
    $settings_link = '<a href="admin.php?page=linkvertise_script_api">' . __('Settings', 'linkvertise-script-api') .'</a>';
    array_push($links, $settings_link);
    return $links;
  }
}
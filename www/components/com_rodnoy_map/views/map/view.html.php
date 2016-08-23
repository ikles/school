<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_helloworld
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
 
// No direct access to this file
defined('_JEXEC') or die('Restricted access');
 
/**
 * HTML View class for the HelloWorld Component
 *
 * @since  0.0.1
 */
class Rodnoy_mapViewMap extends JViewLegacy {

	function display($tpl = null) {
		$language = JFactory::getLanguage();
		$language->load('com_rodnoy_map', JPATH_ADMINISTRATOR, 'ru-RU', true);
		$language->load('com_rodnoy_map', JPATH_ADMINISTRATOR, null, true);

		JLoader::import('rodnoy_map', JPATH_COMPONENT.DIRECTORY_SEPARATOR.'helpers');

		$this->items = Rodnoy_mapHelpersRodnoy_map::getItems();
		$this->classes = Rodnoy_mapHelpersRodnoy_map::getRules();
		$this->statuses = Rodnoy_mapHelpersRodnoy_map::getStatuses();
		$this->names = Rodnoy_mapHelpersRodnoy_map::getNameRules();

		JHtml::_('jquery.framework');
		JHtml::stylesheet(JUri::base().'components/com_rodnoy_map/assets/css/map.css');
		JHtml::script(JUri::base().'components/com_rodnoy_map/assets/js/array.js');
		JHtml::script(JUri::base().'components/com_rodnoy_map/assets/js/main.js');

		// Display the view
		parent::display($tpl);
	}
}
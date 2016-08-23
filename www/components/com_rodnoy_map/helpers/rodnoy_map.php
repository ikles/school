<?php

/**
 * @version    CVS: 1.0
 * @package    Com_Rodnoy_map
 * @author     Pti_the_Leader <ptipti@ptipti.ru>
 * @copyright  2016 Pti_the_Leader
 * @license    GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 */
defined('_JEXEC') or die;

/**
 * Class Rodnoy_mapFrontendHelper
 *
 * @since  1.6
 */
class Rodnoy_mapHelpersRodnoy_map {
	/**
	 * Get an instance of the named model
	 *
	 * @param   string  $name  Model name
	 *
	 * @return null|object
	 */
	public static function getItems() {
		$database = JFactory::getDBO();
		$query = $database->getQuery(TRUE);

		$query
			->select('*')
			->from('#__rodnoy_map_items')
			->order('ID');
		$database->setQuery($query);

		return $database->loadObjectList();
	}

	public static function getRules() {
		return array(
			1 => 'r1a',
			2 => 'r2a',
			3 => 'r3a',
			4 => 'r4a',
			231 => 'r195a',
			232 => 'r196a',
			233 => 'r197a',
			234 => 'r198a',
			235 => 'r199a',
			236 => 'r200a',
			237 => 'r201a',
			238 => 'r202a',
			239 => 'r203a',
			240 => 'kpp',
			241 => 'pool',
			242 => 'r_left',
			243 => 'siren',
			244 => 'river'
		);
	}

	public static function getStatuses() {
		$xml = simplexml_load_file(JPATH_COMPONENT_ADMINISTRATOR.DIRECTORY_SEPARATOR.'models'.DIRECTORY_SEPARATOR.'forms'.DIRECTORY_SEPARATOR.'__rodnoy_map_items9370.xml', 'SimpleXMLElement', LIBXML_NOCDATA | LIBXML_NOBLANKS);
//		$statuses = $xml->document->getElementByPath('status');
		foreach ($xml->fieldset->field as $field) {
			if ($field->attributes()->name == 'status') {
				$return = array();
				foreach ($field->option as $option) {
					$return[(string)$option->attributes()->value] = (string)$option;
				}
				return $return;
			}
		}
	}

	public static function getNameRules() {
		return array(
			240 => 'kpp',
			241 => 'pool',
			242 => 'r_left',
			243 => 'siren',
			244 => 'river'
		);
	}
}
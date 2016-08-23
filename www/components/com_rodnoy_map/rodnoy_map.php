<?php
/**
 * @version    CVS: 1.0
 * @package    Com_Rodnoy_map
 * @author     Pti_the_Leader <ptipti@ptipti.ru>
 * @copyright  2016 Pti_the_Leader
 * @license    GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 */

defined('_JEXEC') or die;

// Include dependancies
jimport('joomla.application.component.controller');

JLoader::registerPrefix('Rodnoy_map', JPATH_COMPONENT);
JLoader::register('Rodnoy_mapController', JPATH_COMPONENT . '/controller.php');


// Execute the task.
$controller = JControllerLegacy::getInstance('Rodnoy_map');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();

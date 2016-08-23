<?php
/**
 * @version    CVS: 1.0
 * @package    Com_Rodnoy_map
 * @author     Pti_the_Leader <ptipti@ptipti.ru>
 * @copyright  2016 Pti_the_Leader
 * @license    GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 */

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.controllerform');

/**
 * __rodnoy_map_items9370 controller class.
 *
 * @since  1.6
 */
class Rodnoy_mapController__rodnoy_map_items9370 extends JControllerForm
{
	/**
	 * Constructor
	 *
	 * @throws Exception
	 */
	public function __construct()
	{
		$this->view_list = '__rodnoy_map_items9370s';
		parent::__construct();
	}
}

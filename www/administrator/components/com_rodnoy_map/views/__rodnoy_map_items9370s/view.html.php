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

jimport('joomla.application.component.view');

/**
 * View class for a list of Rodnoy_map.
 *
 * @since  1.6
 */
class Rodnoy_mapView__rodnoy_map_items9370s extends JViewLegacy
{
	protected $items;

	protected $pagination;

	protected $state;

	/**
	 * Display the view
	 *
	 * @param   string  $tpl  Template name
	 *
	 * @return void
	 *
	 * @throws Exception
	 */
	public function display($tpl = null)
	{
		$this->state = $this->get('State');
		$this->items = $this->get('Items');
		$this->pagination = $this->get('Pagination');

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			throw new Exception(implode("\n", $errors));
		}

		Rodnoy_mapHelpersRodnoy_map::addSubmenu('__rodnoy_map_items9370s');

		$this->addToolbar();

		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @return void
	 *
	 * @since    1.6
	 */
	protected function addToolbar()
	{
		$state = $this->get('State');
		$canDo = Rodnoy_mapHelpersRodnoy_map::getActions();

		JToolBarHelper::title(JText::_('COM_RODNOY_MAP_TITLE___RODNOY_MAP_ITEMS9370S'), '__rodnoy_map_items9370s.png');

		// Check if the form exists before showing the add/edit buttons
		$formPath = JPATH_COMPONENT_ADMINISTRATOR . '/views/__rodnoy_map_items9370';

		if (file_exists($formPath))
		{
			if ($canDo->get('core.create'))
			{
				JToolBarHelper::addNew('__rodnoy_map_items9370.add', 'JTOOLBAR_NEW');
				JToolbarHelper::custom('__rodnoy_map_items9370s.duplicate', 'copy.png', 'copy_f2.png', 'JTOOLBAR_DUPLICATE', true);
			}

			if ($canDo->get('core.edit') && isset($this->items[0]))
			{
				JToolBarHelper::editList('__rodnoy_map_items9370.edit', 'JTOOLBAR_EDIT');
			}
		}

		if ($canDo->get('core.edit.state'))
		{
			if (isset($this->items[0]->state))
			{
				JToolBarHelper::divider();
				JToolBarHelper::custom('__rodnoy_map_items9370s.publish', 'publish.png', 'publish_f2.png', 'JTOOLBAR_PUBLISH', true);
				JToolBarHelper::custom('__rodnoy_map_items9370s.unpublish', 'unpublish.png', 'unpublish_f2.png', 'JTOOLBAR_UNPUBLISH', true);
			}
			elseif (isset($this->items[0]))
			{
				// If this component does not use state then show a direct delete button as we can not trash
				JToolBarHelper::deleteList('', '__rodnoy_map_items9370s.delete', 'JTOOLBAR_DELETE');
			}

			if (isset($this->items[0]->state))
			{
				JToolBarHelper::divider();
				JToolBarHelper::archiveList('__rodnoy_map_items9370s.archive', 'JTOOLBAR_ARCHIVE');
			}

			if (isset($this->items[0]->checked_out))
			{
				JToolBarHelper::custom('__rodnoy_map_items9370s.checkin', 'checkin.png', 'checkin_f2.png', 'JTOOLBAR_CHECKIN', true);
			}
		}

		// Show trash and delete for components that uses the state field
		if (isset($this->items[0]->state))
		{
			if ($state->get('filter.state') == -2 && $canDo->get('core.delete'))
			{
				JToolBarHelper::deleteList('', '__rodnoy_map_items9370s.delete', 'JTOOLBAR_EMPTY_TRASH');
				JToolBarHelper::divider();
			}
			elseif ($canDo->get('core.edit.state'))
			{
				JToolBarHelper::trash('__rodnoy_map_items9370s.trash', 'JTOOLBAR_TRASH');
				JToolBarHelper::divider();
			}
		}

		if ($canDo->get('core.admin'))
		{
			JToolBarHelper::preferences('com_rodnoy_map');
		}

		// Set sidebar action - New in 3.0
		JHtmlSidebar::setAction('index.php?option=com_rodnoy_map&view=__rodnoy_map_items9370s');

		$this->extra_sidebar = '';
	}

	/**
	 * Method to order fields 
	 *
	 * @return void 
	 */
	protected function getSortFields()
	{
		return array(
			'a.`ordering`' => JText::_('JGRID_HEADING_ORDERING'),
			'a.`id`' => JText::_('JGRID_HEADING_ID'),
			'a.`number`' => JText::_('COM_RODNOY_MAP___RODNOY_MAP_ITEMS9370S_NUMBER'),
			'a.`status`' => JText::_('COM_RODNOY_MAP___RODNOY_MAP_ITEMS9370S_STATUS'),
		);
	}
}

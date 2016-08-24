<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_news
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
?>
<?php
defined('_JEXEC') or die;
$item_heading = $params->get('item_heading', 'h4');
?>
<li>
<?php if ($params->get('item_title')) : ?>
	<<?php echo $item_heading; ?> class="newsflash-title<?php echo $params->get('moduleclass_sfx'); ?>">
	<?php if ($params->get('link_titles') && $item->link != '') : ?>			
			<a href="<?php echo $item->link; ?>">			
				<?php $images = json_decode($item->images); ?>
				<img src="<?php echo htmlspecialchars($images->image_intro); ?>" alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>"/>
				<span><?php echo $item->title;?></span>
			</a>			</li>
	<?php else : ?>
		<?php echo $item->title; ?>
	<?php endif; ?>
	</<?php echo $item_heading; ?>>

<?php endif; ?>


<?php if (!$params->get('intro_only')) : ?>
	<?php echo $item->afterDisplayTitle; ?>
<?php endif; ?>

<?php echo $item->beforeDisplayContent; ?>

<!--?php echo $item->introtext; ?-->

<?php if (isset($item->link) && $item->readmore != 0 && $params->get('readmore')) : ?>
	<?php echo '<a class="readmore" href="' . $item->link . '">' . $item->linkText . '</a>'; ?>
<?php endif; ?>
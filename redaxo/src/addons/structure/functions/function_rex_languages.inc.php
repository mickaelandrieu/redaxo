<?php

/**
 * Dient zur Ausgabe des Sprachen-blocks
 * @package redaxo5
 */
$num_clang = rex_clang::count();

$languages = array();
if ($num_clang > 1) {
  $i = 1;
  foreach (rex_clang::getAll() as $id => $_clang) {

    if (rex::getUser()->getComplexPerm('clang')->hasPerm($id)) {
      $lang = array();
      $lang['id'] = $id;
      $lang['title'] = rex_i18n::translate($_clang->getName());

      $lang['linkClasses'] = array();
      if ($id == $clang)
        $lang['linkClasses'][] = 'rex-active';

      $lang['itemClasses'] = $lang['linkClasses'];
      $lang['href'] = rex_url::currentBackendPage() . '&amp;clang=' . $id . $sprachen_add . '&amp;ctype=' . $ctype;

      $languages[] = $lang;
    }
    $i++;
  }

  $langfragment = new rex_fragment();
  $langfragment->setVar('type', 'switch');
  $langfragment->setVar('blocks', array(array('headline' => array('title' => rex_i18n::msg('languages')), 'navigation' => $languages)), false);
  echo $langfragment->parse('navigation.tpl');

  unset($langfragment);
}

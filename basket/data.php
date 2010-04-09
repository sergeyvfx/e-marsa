<?php
  /**
   * Gate - Wiki engine and web-interface for WebTester Server
   *
   * WebTester client page generation script
   *
   * Copyright (c) 2008-2009 Sergey I. Sharybin <g.ulairi@gmail.com>
   *
   * This program can be distributed under the terms of the GNU GPL.
   * See the file COPYING.
   */

  if ($PHP_SELF != '') {
    print 'HACKERS?';
    die;
  }

  global $MARKET, $ipc, $action;

  InitMarket ();

  /* Some optimization stuff */
  $serv_ipc_procs='#basket_add#';
  if ($ipc != '') {
    $n = count ($serv_ipc_procs);
    if (strpos ($serv_ipc_procs, $ipc) > 0) {
      /* Execute IPC command */
      ipc_exec ($ipc);
      die;
    }
  }

  if ($action == 'drop') {
    global $id;
    if (isNumber ($id)) {
      $MARKET->BASKET->DropById ($id);
    }
  } else if ($action == 'send') {
    $MARKET->BASKET->Send ();
  }

  if ($action != 'send') {
    $tpl = manage_template_by_name ('Магазин / Корзина');
    $script = $tpl->GetText ();
    $params = array ();
    tpl_srcp ($script, $params);
  } else {
    $tpl = manage_template_by_name ('Магазин / Корзина / Заказ отправлен');
    $script = $tpl->GetText ();
    tpl_srcp ($script, array ());
  }
?>

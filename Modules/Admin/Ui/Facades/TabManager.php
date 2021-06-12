<?php

namespace Modules\Admin\Ui\Facades;

use Illuminate\Support\Facades\Facade;

/**
 * @method void register(string $name, string $tabsClass)
 * @method void extend(string $name, string $extenderClass)
 *
 * @see \Modules\Admin\Ui\TabManager
 */
class TabManager extends Facade
{
    /**
     * Get the registered name of the component.
     *
     * @return string
     */
    protected static function getFacadeAccessor()
    {
        return \Modules\Admin\Ui\TabManager::class;
    }
}

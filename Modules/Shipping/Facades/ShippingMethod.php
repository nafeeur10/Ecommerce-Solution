<?php

namespace Modules\Shipping\Facades;

use Illuminate\Support\Facades\Facade;

/**
 * @method \Illuminate\Support\Collection all()
 * @method array names()
 * @method object get(string $name)
 * @method \Modules\Shipping\ShippingMethodManager register(string $name, callable|object $driver)
 * @method int count()
 * @method bool isEmpty()
 * @method bool isNotEmpty()
 *
 * @see \Modules\Shipping\ShippingMethodManager
 */
class ShippingMethod extends Facade
{
    /**
     * Get the registered name of the component.
     *
     * @return string
     */
    protected static function getFacadeAccessor()
    {
        return \Modules\Shipping\ShippingMethodManager::class;
    }
}

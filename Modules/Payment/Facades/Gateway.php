<?php

namespace Modules\Payment\Facades;

use Illuminate\Support\Facades\Facade;

/**
 * @method \Illuminate\Support\Collection all()
 * @method array names()
 * @method \Modules\Payment\GatewayInterface get(string $name)
 * @method \Modules\Payment\GatewayManager register(string $name, callable|object $driver)
 * @method int count()
 * @method bool isEmpty()
 * @method bool isNotEmpty()
 *
 * @see \Modules\Payment\GatewayManager
 */
class Gateway extends Facade
{
    /**
     * Get the registered name of the component.
     *
     * @return string
     */
    protected static function getFacadeAccessor()
    {
        return \Modules\Payment\GatewayManager::class;
    }
}

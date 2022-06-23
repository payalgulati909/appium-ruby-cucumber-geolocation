After do
    $driver.quit if $driver
    if $bs_local
      $bs_local.stop
      $bs_local = nil
    end
  end
  
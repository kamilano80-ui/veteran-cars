<?php

declare(strict_types=1);

namespace App\Presentation\Front\Homepage;

use App\Model\CmsManager;
use App\Presentation\Front\BaseFrontPresenter;

final class HomepagePresenter extends BaseFrontPresenter {

    public function renderDefault(): void {
        $this->template->article = $this->cmsManager->getHomePage();
    }

}

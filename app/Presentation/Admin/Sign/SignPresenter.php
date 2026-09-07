<?php

declare(strict_types=1);

namespace App\Presentation\Admin\Sign;

use Nette\Application\UI\Form;
use App\Forms\SignInFormFactory;
use App\Presentation\Admin;
use App\Presentation\Admin\BaseAdminPresenter;

final class SignPresenter extends BaseAdminPresenter
{
    /** @persistent */
    public $backlink = '';

    /** @var SignInFormFactory */
    private $signInFactory;


    public function __construct(SignInFormFactory $signInFactory)
    {
        $this->signInFactory = $signInFactory;
    }

    protected function createComponentSignInForm(): Form
    {
        return $this->signInFactory->create(function (): void {
            $this->restoreRequest($this->backlink);
            $this->redirect('Dashboard:');
        });
    }

    public function actionOut(): void
    {
        $this->getUser()->logout();
    }
}


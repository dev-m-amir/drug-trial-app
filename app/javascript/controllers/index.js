import { Application } from '@hotwired/stimulus'
import FlashMessageController from './flash_message_controller';

const application = Application.start()

application.register('flash-message', FlashMessageController);

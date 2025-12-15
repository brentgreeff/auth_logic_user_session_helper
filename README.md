> [!CAUTION]
> This repository is deprecated and no longer maintained.# AuthLogic UserSession Helper

Bunch of convenience methods for use with AuthLogic and Rails.

Only works if you are using a standard user, and user_session.

Will be able to specify the model(s) names in the future

## Install

    gem install auth_logic_user_session_helper

    (or use bundler)

## Example

*   Get the current_user from the session
        current_user

*   Is there a user logged in?
        user?

*   Is there no user currently logged in?
        no_user?

*   A user is required! (use as before filter to redirect to '/login')
        user_required

*   A user cannot be logged in (will redirect to the root_url, whatever that
    is mapped to)
        no_user_required

*   If you need to remember what the user was trying to do before you made
    them login
        store_location
        redirect_back_or_default

### user_required will store the requested location before redirecting. ###
Call redirect_back_or_default after login to enable this behaviour.

## Testing

Adds login_as and logout methods to tests.

Copyright (c) 2009 [Brent Greeff], released under the MIT license

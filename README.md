# Nissan Intelligent Mobility Tour

A web project to capture user data for participants at the Fillmore Jazz Festival. Requirements were to use:

- A given layout/screenshot, which has been **replicated as close as possible**.
- Rails => I used Rails v.4.2.5, which is what I use on my laptop.
- sqlite for the database 
- Bootstrap 4
- [Parsley.js](http://parsleyjs.org/) for front-end validation, [implemented with a gem](https://github.com/jiripospisil/parsley-rails).
- @szimek’s [Signature Pad](https://github.com/szimek/signature_pad), a JavaScript library for drawing. Primarily used to capture signatures.
- Nissan’s custom font

## General Notes

This project also considers mobile-first design, using Bootstrap’s various classes to achieve a fully responsive layout. I began with an outside-in approach, starting with Capybara testing. As I got further deeper into it, that was abandoned along with further RSpec tests. I moved forward incrementally with each task by reading errors. This is the reason for multiple migrations. The canvas signature is saved as data URL. And lastly, styling was made overall consistent for Chrome, Firefox and Safari on macOS (see use of arrow.png).

## UX Improvements:
- Disabled text selection to prevent user from selecting text beyond signature box. That could be problematic.
- Added asterisk/required for `Email confirmation` because it technically is.
- I added a script for Parsley to ensure the two email addresses are the same. It remains buggy right now.
- Disabled default Rails error formatting for radio buttons (and checkboxes) to fit layout better, and added relevant messages.
- As shown in the screenshot, I left the checkbox checked for Nissan product and event news.
- For phone optimization, I hid the hero image to follow typical standards.

## Omissions and Issues
- Rails validation for `vehicle` selections was left off the actual form, but retains Rails validation for the model. Messages did not appear as intended, so it was removed from the form. Vehicle selection relies on Parsley.
- Similar for the `Participation` radio button, which has a default selected value just like the given screenshot.
- Not sure why `State` value does not persist after a Rails validation error. It resets to the first value, AK.
- The same also goes with `Email confirmation` and `Vehicles`. If there are Rails validation errors, the field is cleared or reset.

## Improvements to Make
- Reduce gutter width for Bootstrap. Skipped due to time.
- Use Parsley to also validate canvas signature.
- Fine tune CSS for radio buttons and checkboxes as seen in the layout (gray background).
- CSS fixes for vertical spacing in mobile devices. There were problems with xs/sm classes and padding (for example, py-xs-3).
- Keeping this Rails version at v.4.2.5 for submission, but looks like I'll need to update shortly due to gem vulnerabilities.
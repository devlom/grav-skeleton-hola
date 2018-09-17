---
title: 'Say Hello.'
smallTitle: Contact
phoneTitle: Phone
phonePhone: 'Phone: (+63) 555 1212'
phoneMobile: 'Mobile: (+63) 555 0100'
phoneFax: 'Fax: (+63) 555 0101'
emailTitle: Email
emailAddress: 'someone@holawebsite.com,info@holawebsite.com'
addressTitle: Address
addressDetails: "1600 Amphitheatre Parkway<br>\r\nMountain View, CA<br>\r\n94043 US"
form:
    name: Kontakt
    action: /kontakt
    fields:
        -
            name: name
            label: Name
            placeholder: Name
            autofocus: 'off'
            autocomplete: 'on'
            type: text
            outerclasses: form-field
            classes: full-width
        -
            name: email
            label: Email
            placeholder: 'Email adress'
            type: email
            outerclasses: form-field
            classes: full-width
        -
            name: subject
            label: Subject
            type: text
            placeholder: Subject
            outerClasses: form-field
            classes: full-width
        -
            name: message
            label: Message
            placeholder: Message
            type: textarea
            outerclasses: form-field
            classes: full-width
            rows: 6
    buttons:
        -
            type: submit
            value: Submit
            outerclasses: form-field
            classes: 'full-width btn--primary'
    process:
        -
            email:
                from: '{{ config.plugins.email.from }}'
                to:
                    - '{{ config.plugins.email.from }}'
                    - '{{ form.value.email }}'
                subject: '[Message from] {{ form.value.name|e }}'
                body: '{% include ''forms/data.html.twig'' %}'
        -
            save:
                fileprefix: feedback-
                dateformat: Ymd-His-u
                extension: txt
                body: '{% include ''forms/data.txt.twig'' %}'
        -
            message: 'Thank you for you''re message! We will contact you shortly'
        -
            display: thankyou
---

Lorem ipsum Dolor adipisicing nostrud et aute Excepteur amet commodo ea dolore irure esse Duis nulla sint fugiat cillum ullamco proident aliquip quis qui voluptate dolore veniam Ut laborum non est in officia.
# My CV

This repo contains some Ruby scripts I use to manage my CV using a simple DSL. You may clone and adapt it if you wish to use this to build your own CV.

The resulting PDF is available [here](cv.pdf).

## Generating the PDF

First install the required Gems by running:

```sh
bundle
```

Then generate a file called `cv.pdf` and keep it up-to-date by running:

```sh
bundle exec guard

```

## DSL

This repository provides a DSL tailored to create CVs.

See [main.rb](src/main.rb) to see what my CV looks like using the DSL. To see the implementation of the DSL, look in [cv.rb](src/cv.rb).

Here's a quick example of the DSL:

```rb
CV.render 'cv.pdf' do
  header 'Your Name', sub: 'Developer', info: <<~TEXT
    email@example.com
    website.com
  TEXT

  section 'Experience', do
    job 'Role',
        at: 'Company',
        time: '2020 - 2024',
        tech: 'Ruby, JavaScript',
        link: 'company.com' do
      bullet 'Did a thing'
      bullet 'Did another thing'
    end
  end
end

```

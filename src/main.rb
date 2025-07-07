# frozen_string_literal: true

require_relative 'cv'
require_relative 'support'

CV.render 'cv.pdf' do
  header 'Sytze Zeijlmaker', sub: 'Full-stack Developer', info: <<~TEXT
    sytzez@gmail.com
    github.com/sytzez
    linkedin.com/in/sytzez
    No sponsorship required
  TEXT

  section 'Personal statement' do
    paragraph <<~TEXT.squish
      I'm a highly productive, solution-focused and collaborative software developer
      with 5+ years professional and 15+ years personal experience programming.
      I have a track record of unlocking stalled projects by providing teams with a technical vision, motiviation,
      the confidence to get started and the momentum to see things through.
      I care deeply about code quality and future-proofness, aiming for simplicity, readability,
      keeping related code close together, exhaustive testing of behaviour, and sensible performance trade-offs.
      I work with a broad perspective, keeping in mind product design, user experience, accessibility
      and business value and I love to contribute ideas beyond just the code.
    TEXT
    large_gap
  end

  section 'Work experience' do
    job 'Senior Software Developer & Squad Lead',
        at: 'Sumdog',
        time: 'Oct 2023 - Jun 2025',
        tech: <<~TEXT.squish do
          Ruby on Rails, Rspec, Scala (Akka), JavaScript/TypeScript/CoffeeScript (Vue.js, AngularJS, jQuery), Postgres,
          AWS, Docker, Terraform, Ansible, Gitlab
        TEXT
      bullet <<~TEXT.squish
        Led team of another senior developer, a QA and a PM, building dashboard reports and maintaining curriculum progression system which handles ~1.5M questions a day.
      TEXT
      bullet <<~TEXT.squish
        Delivered the 'Fluency Booster' feature which introduced non-linear curriculum progression and other changes,
        reducing the average number of questions to complete a skill from 132 to 53.
      TEXT
      bullet 'Completely rebuilt class, student and subscription management UI in less than a quarter.'
      bullet <<~TEXT.squish
        Optimized our most time consuming endpoint from using 13% to 7% of total server time (NewRelic) by batching requests using a Redis queue and Sidekiq.
      TEXT
      bullet 'Optimised queries, reducing one endpoint from an average of 20s to 7s for big schools.'
      bullet 'Solved security vulnerabilities (1 serious one) and added JWT authentication to services.'
      bullet 'Made improvements to CI/CD pipeline, adding extra checks and making it easier to deploy and roll back.'
      bullet <<~TEXT.squish
        Untangled and cleaned up code, deleting over 10.000 lines of dead code and restoring browser history functionality#{' '}
        by separating frontend frameworks and replacing PJAX with Turbo.
      TEXT
      bullet 'Built processes to anonymize and archive large amounts of data.'
      bullet 'Increased productivity of others by automating processes and creating tools for common tasks.'
    end

    job 'Head of Digital Development',
        at: 'University of Bath',
        time: 'Apr 2022 - Sep 2023',
        tech: 'Ruby on Rails, JavaScript (jQuery), Oracle DBMS, Hugo (SSG), Gitlab, PHP' do
      bullet <<~TEXT.squish
        Led team of 3 other developers and 1 UX designer, building features for bespoke CMS 'Typecase', acting
        as a lead developer, product manager and line manager, directly reporting to the CMO.
      TEXT
      bullet <<~TEXT.squish
        Optimised time to publish a page from 2-3m to 30-50s, which includes regenerating the entire site.
      TEXT
      bullet <<~TEXT.squish
        Upgraded all apps from Ruby 2.7 to 3.2, PHP 5.6 to 8.0, replaced DataMapper ORM with ActiveRecord, increased test coverage,
        refactored hard to read code and taught best practices.
      TEXT
      bullet 'Led successful recruitment, interview process and onboarding for 2 new Ruby developers.'
    end

    job 'Full-stack Developer',
        at: 'Endeavour Group',
        time: 'Oct 2019 - Mar 2022',
        tech: <<~TEXT.squish do
          PHP (Laravel, Symfony, CodeIgniter), TypeScript (Angular, Ionic), Postgres, MySQL, Gitlab, Apollo GraphQL
        TEXT
      bullet 'Built and maintained mobile apps, websites, CMSes and APIs using SOLID, TDD and Clean Code.'
      bullet 'Context switched between projects in e-commerce, social media, lead generation, dating and more.'
      bullet 'Implemented GraphQL layer, chat, inappropriate picture detection and led front-end on new dating app.'
      bullet 'Implemented activity feed, shared photo albums and location based notifications on social media app.'
      bullet 'Vastly improved and performance optimised product search and check-out flow on wine webshop.'
    end
  end

  section 'Education' do
    job 'BMus Classical Composition',
        at: 'Codarts Convervatory',
        time: '2019 (7.5/10)',
        tech: 'JavaScript, WebGL, GLSL, WebAudio, WebMIDI, SuperCollider',
        link: 'github.com/sytzez/audiovisual' do
      paragraph <<~TEXT.squish
        Developed tools for real-time generated audiovisual performances and algorithmic music composition.
      TEXT
    end
  end

  section 'Personal projects' do
    project 'Muscade',
            description: 'Service to render animations from MIDI.',
            tech: 'Rust (Axum, Bevy), Ffmpeg',
            time: '2024'

    project 'rpsbrawl.com',
            description: 'Online multiplayer game.',
            tech: 'Rust (Axum, Tokio), PIXI.js, Websockets',
            time: '2024'

    project 'Muvis',
            description: 'Web app to render animations from MIDI and sync to audio.',
            tech: 'React/Redux, WebGL, GLSL',
            time: '2019'

    project 'Games',
            description: 'I\'ve made countless small games.',
            tech: 'Flash, Blitz3D, C# (Unity), C (OpenGL)',
            time: '2006-14'

    large_gap

    footnote 'Read this CV in Ruby: github.com/sytzez/cv/blob/master/src/main.rb'
  end
end

puts "CV rendered at #{File.absolute_path('cv.pdf')}"

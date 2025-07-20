# frozen_string_literal: true

require_relative 'cv'
require_relative 'support'

CV.render 'cv.pdf' do
  header 'Sytze Zeijlmaker', sub: 'Full-stack Developer', info: <<~TEXT
    sytzez@gmail.com
    github.com/sytzez
    linkedin.com/in/sytzez
    No UK sponsorship required
  TEXT

  section 'Professional experience' do
    job 'Senior Software Developer & Squad Lead',
        at: 'Sumdog',
        time: 'Oct 2023 - Jun 2025',
        tech: <<~TEXT.squish do
          Ruby (Rails, Rspec, Sidekiq), Scala (Akka), JavaScript/TypeScript/CoffeeScript (Vue.js, AngularJS, jQuery), Postgres,
          Hotwire Turbo, AWS (ECS, EC2, RDS, Lambda, S3), Docker, Terraform, Ansible, GitLab CI/CD, REST, Sentry, NewRelic
        TEXT
      bullet <<~TEXT.squish
        Led team of another senior developer, a QA and a PM, building and maintaining dashboard reports,
        student/class management and curriculum progression system which handles ~1.5M questions a day.
      TEXT
      bullet <<~TEXT.squish
        Reduced the average number of questions to complete a skill from 132 to 53 without reducing answering accuracy,
        which is a 280% increase of educational value per time spent,
        by transforming the curriculum progression system from linear to non-linear, modifying the educational phases, temporarily pausing
        'difficult' learning strands, and making the prerequisites for completing a skill more effective.
      TEXT
      bullet <<~TEXT.squish
        Created user-friendly, customisable dashboard reports backed by billions of datapoints, ensuring good performance by
        denormalizing data and writing efficient queries and indexes.
      TEXT
      bullet <<~TEXT.squish
        Improved GDPR and CCPA compliance by adding processes to detect, verify and anonymize old data
        and updating the sign up flow to avoid retaining any data until the user is confirmed to be an adult.
      TEXT
      bullet <<~TEXT.squish
        Identified and solved security vulnerabilities, including one that allowed anyone to create an account with full access to any school.
        Implemented JWT authentication for our microservices, increased protection against XSS,
        and added processes to detect vulnerabilities in the future.
      TEXT
      bullet 'Completely rebuilt class, student and subscription management UI in less than a quarter.'
      bullet <<~TEXT.squish
        Integrated Xporter API into the product, allowing full and partial syncs of school data to the API source,
        including processes to match and link pre-existing users.
        The syncs are fault-tolerant and report warnings about invalid or missing data in a clear way.
      TEXT
      bullet <<~TEXT.squish
        Optimized our most time consuming endpoint from using 13% to 7% of **total** server time (NewRelic)
        by batching requests using a Redis queue.
      TEXT
      bullet 'Optimised queries, reducing one endpoint from an average of 20s to 7s for big schools.'
      bullet 'Made improvements to CI/CD pipeline, adding extra checks and making it easier to deploy and roll back.'
      bullet <<~TEXT.squish
        Untangled, cleaned up and simplified code, deleting over 10.000 lines of dead code and restoring browser history functionality
        by separating frontend frameworks and replacing PJAX with Turbo.
      TEXT
    end

    job 'Head of Digital Development', at: 'University of Bath', time: 'Sep 2022 - Sep 2023' do
      # Decrease space between this role and the next as they are at the same organisation
      move_up(10)
    end
    job 'Ruby Developer',
        at: 'University of Bath',
        time: 'Apr 2022 - Aug 2022',
        tech: 'Ruby on Rails, JavaScript (jQuery), Oracle DBMS, Hugo (SSG), GitLab CI/CD, PHP, WordPress' do
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
          PHP (Laravel, Symfony, CodeIgniter, WordPress, PHPUnit), TypeScript (Angular, Ionic), Postgres, MySQL, GitLab, Apollo GraphQL,
          REST, JSON:API
        TEXT
      bullet 'Built and maintained mobile apps, websites, CMSes and APIs using SOLID, TDD and Clean Code.'
      bullet 'Implemented GraphQL layer, chat, inappropriate picture detection and led front-end on new dating app.'
      bullet 'Implemented activity feed, shared photo albums and location based notifications on social media app.'
      bullet 'Vastly improved and performance optimised product search and check-out flow on wine webshop.'
      bullet 'Mentored trainees and interns and held tech presentations.'
    end
  end

  section 'Education' do
    job 'BMus Classical Composition',
        at: 'Codarts Convervatory',
        time: '2019',
        tech: 'JavaScript, WebGL, GLSL, WebAudio, WebMIDI, SuperCollider',
        link: 'github.com/sytzez/audiovisual' do
      paragraph <<~TEXT.squish
        Developed tools for real-time generated audiovisual performances and algorithmic music composition.
      TEXT
    end
  end
end

puts "CV rendered at #{File.absolute_path('cv.pdf')}"

# frozen_string_literal: true

require_relative 'cv'
require_relative 'support'

CV.render 'cv.pdf' do
  header 'Sytze Zeijlmaker', sub: 'Full-stack Ruby on Rails Developer', info: <<~TEXT
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
        time: 'Oct 2023 - Present',
        tech: 'Ruby on Rails, Rspec, Scala (Akka), JavaScript (Vue.js), Postgres, AWS, Terraform, Gitlab',
        link: 'learn.sumdog.com' do
      bullet <<~TEXT.squish
        Leading a team of senior developers, a QA and a PM, working across many technologies.
      TEXT
      bullet <<~TEXT.squish
        Delivered the 'Fluency Booster' feature, which required substantive changes throughout the stack in complex
        and high throughput (~1.5M questions a day) areas. It enables more personalised, non-linear curriculum progression,
        reducing the average number of questions to complete a skill from 132 to 53, while improving insights in reports,
        increasing teacher engagement with the dashboard.
      TEXT
      bullet <<~TEXT.squish
        Making improvements out of my own initiative.
        For example: I optimized an endpoint that took 20s for big schools to 7s.
        I optimized our most time consuming endpoint from 13% to 7% of total server time.
        I created several tools for QA and CS to save developer hours.
        I improved our CI pipeline to make it easier to deploy to various environments.
        I deleted 1000s of lines of unnessecary code.
        Pages had mixed Vue and AngularJS code competing for the History API;
        I separated that out to fix browser navigation functionality.
      TEXT
    end

    job 'Head of Digital Development',
        at: 'University of Bath',
        time: 'Apr 2022 - Sep 2023',
        tech: 'Ruby on Rails, JavaScript (jQuery), Oracle DBMS, Hugo (static site gen), Gitlab',
        link: 'bath.ac.uk' do
      bullet <<~TEXT.squish
        Led team of 3 other developers and 1 UX designer, building features for bespoke CMS 'Typecase', acting
        as a lead developer, product manager and line manager, directly reporting to the CMO.
      TEXT
      bullet <<~TEXT.squish
        Delivered features in months that were previously on hold for over a year due to unclear requirements.
      TEXT
      bullet 'Led successful recruitment, interview process and onboarding for 2 new Ruby developers.'
    end

    job 'Full-stack Developer',
        at: 'Endeavour Group',
        time: 'Oct 2019 - Mar 2022',
        tech: 'PHP (Laravel, Symfony, CodeIgniter, Wordpress), TypeScript (Angular, Ionic), MySQL, Gitlab',
        link: 'endeavour.nl' do
      bullet <<~TEXT.squish
        Worked simultaneously for many clients such as Unit Victor, Okhuysen, Aalberts and BizzKiss,
        effortlessly switching between a large variety of tech stacks.
      TEXT
      bullet 'Built full-stack features for web and mobile applications, autonomously and as part of small teams.'
      bullet 'Played a leading role launching greenfield front- and backend for dating app BizzKiss.'
      bullet 'Coached interns and trainees and held tech presentations.'
    end
  end

  section 'Education' do
    job 'Classical Composition',
        at: 'Codarts Convervatory',
        time: '2014 - 2019',
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
            description: 'I\'ve made countless of small games.',
            tech: 'Flash, Blitz3D, C# (Unity), C (OpenGL)',
            time: '2006-14'

    large_gap

    footnote 'Read this CV in Ruby: github.com/sytzez/cv/blob/master/src/main.rb'
  end
end

puts "CV rendered at #{File.absolute_path('cv.pdf')}"

use Rack::Static,
  :urls => ["/Folder/img", "/Folder/js", "/Folder/css"],
  :root => "public"

run lambda { |env|
  [
    200,
    {'Content-Type'  => 'text/html'},
    ["<body>
        <h1 style='text-align: center; color: red; font-size: 100px'>My Skills</h1>
        <ul style='font-size: 100px; list-style: none'>
          <li>Ruby</li>
          <li>HTML</li>
          <li>CSS</li>
        </ul>
      </body>"],
    File.open('Folder/index.html', File::RDONLY)
  ]
}
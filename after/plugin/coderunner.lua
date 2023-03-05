require('code_runner').setup({
  -- put here the commands by filetype
  focus = false,
  filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
		go="go run"
	},
})

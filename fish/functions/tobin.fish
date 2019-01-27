# wengwengweng

function tobin -d "move executable to bin" -a "file"

	switch "$file"

		case ""
			c red; echo "no file provided"; c normal
			return 1

		case "*"

			if not test -e "$file"

				c red; echo "file not exist"; c normal
				return 1

			end

			set bin ~/.local/bin
			chmod +x $file
			install -v $file $bin

	end

end

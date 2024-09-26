--script to open a new safari window with some URLs

on setWorkspace(arg, workspaces)
	-- display dialog ("arg: " & arg & "   workspaces: " & )
	
	repeat with wkspc in workspaces
		set wkspc_name to name of wkspc
		-- display dialog ("arg: " & arg & "  wkspc: " & wkspc_name)
            	if (wkspc_name as text) = (arg as text) then
			-- display dialog ("arg: " & arg & "  wkspc: " & wkspc_name)
			set result to (urls of wkspc)
			return result
		end if
        end repeat
end setWorkspace


on run argv
	set writingRecord to {name:"writing", urls:{"https://docs.google.com", "https://www.thesaurus.com", "https://www.reddit.com/r/writing/comments/25jt4p/lets_compile_a_comprehensive_list_of_resources/"}}
	set jobHuntRecord to {name:"jobHunt", urls:{"https://app.joinhandshake.com/explore", "https://www.linkedin.com", "https://mail.google.com/mail/u/0/#inbox"}} 	
	set artRecord to {name:"art", urls:{"https://www.drive.google.com", "https://www.canva.com", "https://www.instagram.com/", "https://www.calendar.google.com"}}

	set workspaces to {writingRecord} & {jobHuntRecord} & {artRecord}	
	set workspace_URLs to setWorkspace(argv, workspaces)
	
	set {first_url, rest_urls} to {item 1 of workspace_URLs, the rest of workspace_URLs}
		
	tell application "Safari"
		make new document with properties {URL:first_url}
		tell window 1
			repeat with tab_url in rest_urls
				make new tab at end of tabs with properties {URL:tab_url}
			end repeat
		end tell
	end tell
end run


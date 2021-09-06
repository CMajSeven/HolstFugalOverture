all: release.zip Holst\ -\ A\ Fugal\ Overture.pdf

Holst\ -\ A\ Fugal\ Overture.pdf : full_score.pdf cover.pdf
	pdftk C=cover.pdf F=full_score.pdf cat C1-2 F output "Holst - A Fugal Overture.pdf"
	# pdftk cat full_score.pdf cover.pdf output temp.pdf
	# cat temp.pdf label_end.bin > "Holst - A Fugal Overture.pdf"
	# rm temp.pdf

release.zip: Holst\ -\ A\ Fugal\ Overture.pdf parts/*.pdf
	rm release.zip || true
	7z a release.zip "Holst - A Fugal Overture.pdf" parts/*.pdf
sed -i -n '/## Recipes/q;p' README.md
echo "## Recipes" >> README.md
echo "">>README.md
for i in */recipe.md; 
	do title=$(head -n1 $i | sed 's/# //g'); 
	echo "- [$title](./$i)" >> README.md; 
done

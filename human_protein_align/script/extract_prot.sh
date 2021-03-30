# short script excracting some specific information from files produces by 'needle'
# script extracts the folloiwing chunks of text (example):
# Human_NP_001158209.2 from the line beginning # 1: Human_NP_001158209.2
# Cat_XP_011283720.1 from the line beginning 2: Cat_XP_011283720.1
# 52 from the line beginning # Identity:  (i.e. extracts the percentage value)


for file in *_align
do
sed -n -e 's/^.*1: //p' “$file” >> “$file”_stats
sed -n -e 's/^.*2: //p' “$file” >> “$file”_stats
sed -rne 's/^.*Identity: .* \(*//p' “$file” | sed -rne 's/\%.*//p' >> “$file”_stats
done
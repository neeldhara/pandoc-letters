TEX = pandoc
FLAGS = --pdf-engine=xelatex

src1 = template.tex letter.md
op1 = output

all : $(op1).pdf

$(op1).pdf : $(src1)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)
from pypdf import PdfWriter, PdfReader
import argparse
 
# Initialize parser
parser = argparse.ArgumentParser()
parser.add_argument('input_pdf') 
parser.add_argument('output_question_pdf') 
parser.add_argument('output_answer_pdf') 

args = parser.parse_args()
print(args.input_pdf, args.output_question_pdf, args.output_answer_pdf)

infile = PdfReader(args.input_pdf, 'rb')
num_pages = len(infile.pages)
print('num_pages', num_pages)

output = PdfWriter()
for i in range(num_pages-1):
    p = infile.pages[i]
    output.add_page(p)
with open(args.output_question_pdf, 'wb') as f:
    output.write(f)

output = PdfWriter()
for i in [num_pages-1]:
    p = infile.pages[i]
    output.add_page(p)
with open(args.output_answer_pdf, 'wb') as f:
    output.write(f)

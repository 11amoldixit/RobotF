from lxml import etree
import sys

def remove_error_and_warning_entries(output_xml_path):
    tree = etree.parse(output_xml_path)
    root = tree.getroot()

    # Find error and warning messages
    for msg in root.xpath('.//msg[@level="ERROR"] | .//msg[@level="WARN"]'):
        parent = msg.getparent()
        if parent is not None:
            parent.remove(msg)

    # Save the modified XML
    tree.write(output_xml_path, pretty_print=True)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python post_process_logs.py <output.xml>")
        sys.exit(1)
    output_xml_path = sys.argv[1]
    remove_error_and_warning_entries(output_xml_path)
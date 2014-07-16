part of beyondAngular;

/**
 * (C) 2014 Stephan Rauh http://www.beyondjava.net
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


class AbstractTransformer {
  String tagname;
  String target;

  List<String> attributes = new List<String>();

  AbstractTransformer(this.tagname, this.target) {
    Iterable<Match> allMatches = r"#{".allMatches(target);
    allMatches.forEach((Match m) => attributes.add(target.substring(m.end, target.indexOf("}", m.end))));
  }

  void transform() {
    HtmlCollection list = window.document.getElementsByTagName(tagname);
    for (int i = 0; i < list.length; i++) {
      _transformElement(list[i]);
    }
  }

  void _transformElement(HtmlElement element) {
    String html = target;
    attributes.forEach((String attribute){
      html = _replaceAttribute(element, attribute, html);
    });
    Element newElement = PuiHtmlUtils.parseResponse(html);
    Element content = newElement.querySelector("content");
    if (null != content) {
      List<Element> f = content.parent.children;
      for (int i = 0; i < f.length; i++) {
        if (f[i]==content) {
          f.removeAt(i);
          for (int j = 0; j < element.children.length; j++) {
            if (f.length==0) f.add(element.children[j]);
            else f.insert(i+j, element.children[j]);
          }
          break;
        }
      }

    }

    List<Element> list = element.parent.children;
    for (int i = 0; i < list.length; i++) {
      if (list[i]==element) {
        list[i]=newElement;
        break;
      }
    }
  }

  String _replaceAttribute(HtmlElement element, String attributename, String html) {
    String attribute = element.attributes[attributename];
    if (null == attribute) attribute="";
    html = html.replaceAll("#{$attributename}", attribute);
    return html;
  }
}
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


class ButtonTransformer extends AbstractTransformer {
  ButtonTransformer():super("pui-button", """
      <button class="pui-button ui-widget ui-state-default ui-corner-all" type="button"  role="button" aria-disabled="false" >
        <span class="pui-button-text"><content></content></span>
      </button>
""")
  {}
}
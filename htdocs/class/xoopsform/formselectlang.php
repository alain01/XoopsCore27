<?php
/**
 * XOOPS form element
 *
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting source code
 * which is considered copyrighted (c) material of the original comment or credit authors.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * @copyright       (c) 2000-2016 XOOPS Project (www.xoops.org)
 * @license             GNU GPL 2 (https://www.gnu.org/licenses/gpl-2.0.html)
 * @package             kernel
 * @subpackage          form
 * @since               2.0.0
 * @author              Kazumi Ono (AKA onokazu) http://www.myweb.ne.jp/, http://jp.xoops.org/
 */

defined('XOOPS_ROOT_PATH') || exit('Restricted access');

xoops_load('XoopsLists');
xoops_load('XoopsFormSelect');

/**
 * A select field with available languages
 */
class XoopsFormSelectLang extends XoopsFormSelect
{
    /**
     * Constructor
     *
     * @param string $caption
     * @param string $name
     * @param mixed|null $value Pre-selected value (or array of them).
     *                        Legal is any name of a XOOPS_ROOT_PATH."/language/" subdirectory.
     * @param int    $size    Number of rows. "1" makes a drop-down-list.
     */
    public function __construct(string $caption, string $name, mixed $value = null, int $size = 1)
    {
        parent::__construct($caption, $name, $value, $size);
        $this->addOptionArray(XoopsLists::getLangList());
    }
}

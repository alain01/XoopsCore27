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
 * @copyright       (c) 2000-2017 XOOPS Project (www.xoops.org)
 * @license             GNU GPL 2 (https://www.gnu.org/licenses/gpl-2.0.html)
 * @package             kernel
 * @subpackage          form
 * @since               2.0.0
 * @author              Kazumi Ono (AKA onokazu) http://www.myweb.ne.jp/, http://jp.xoops.org/
 */

defined('XOOPS_ROOT_PATH') || exit('Restricted access');

xoops_load('XoopsFormElement');

/**
 * A textarea
 */
class XoopsFormTextArea extends XoopsFormElement
{
    /**
     * number of columns
     *
     * @var int
     * @access private
     */
    public int $_cols;

    /**
     * number of rows
     *
     * @var int
     * @access private
     */
    public int $_rows;

    /**
     * initial content
     *
     * @var string
     * @access private
     */
    public string $_value;

    /**
     * Constuctor
     *
     * @param string $caption caption
     * @param string $name    name
     * @param string $value   initial content
     * @param int    $rows    number of rows
     * @param int    $cols    number of columns
     */
    public function __construct(string $caption, string $name, string $value = '', int $rows = 5, int $cols = 50)
    {
        $this->setCaption($caption);
        $this->setName($name);
        $this->_rows = $rows;
        $this->_cols = $cols;
        $this->setValue($value);
    }

    /**
     * get number of rows
     *
     * @return int
     */
    public function getRows(): int
    {
        return $this->_rows;
    }

    /**
     * Get number of columns
     *
     * @return int
     */
    public function getCols(): int
    {
        return $this->_cols;
    }

    /**
     * Get initial content
     *
     * @param  bool $encode To sanitizer the text? Default value should be "true"; however we have to set "false" for backward compatibility
     * @return string
     */
    public function getValue(bool $encode = false): string
    {
        return $encode ? htmlspecialchars($this->_value, ENT_QUOTES | ENT_HTML5) : $this->_value;
    }

    /**
     * Set initial content
     */
    public function setValue(string $value): void
    {
        $this->_value = $value;
    }

    /**
     * prepare HTML for output
     *
     * @return string HTML
     */
    public function render(): string
    {
        return XoopsFormRenderer::getInstance()->get()->renderFormTextArea($this);
    }
}

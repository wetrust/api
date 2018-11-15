<?php

/**
 * Class DatabaseFactory
 *
 * Use it like this:
 * $database = DatabaseFactory::getFactory()->getConnection(False);
 *
 * That's my personal favourite when creating a database connection.
 * It's a slightly modified version of Jon Raphaelson's excellent answer on StackOverflow:
 * http://stackoverflow.com/questions/130878/global-or-singleton-for-database-connection
 *
 * Full quote from the answer:
 *
 * "Then, in 6 months when your app is super famous and getting dugg and slashdotted and you decide you need more than
 * a single connection, all you have to do is implement some pooling in the getConnection() method. Or if you decide
 * that you want a wrapper that implements SQL logging, you can pass a PDO subclass. Or if you decide you want a new
 * connection on every invocation, you can do do that. It's flexible, instead of rigid."
 *
 * Thanks! Big up, mate!
 */
class DatabaseFactory
{
    private static $factory;
    private $databaseR;
    private $databaseW;

    /**
     * Crea o retorna el puntero solo lectura o escritura
     */
    public static function getFactory()
    {
        if (!self::$factory) {
            self::$factory = new DatabaseFactory();
        }
        return self::$factory;
    }

    public function getConnection($mode) {

        if ($mode === true){
            if (!$this->databaseW) {

                try {
                    $options = array(PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ, PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING);
                    $this->databaseW = new PDO(
                    Config::get('DB_TYPE') . ':host=' . Config::get('DB_HOST') . ';dbname=' .
                    Config::get('DB_NAME') . ';port=' . Config::get('DB_PORT') . ';charset=' . Config::get('DB_CHARSET'),
                    Config::get('DB_USER_W'), Config::get('DB_PASS_W'), $options
                    );
                } catch (PDOException $e) {

                    // Echo custom message. Echo error code gives you some info.
                    echo 'Database connection can not be estabilished. Please try again later.' . '<br>';
                    echo 'Error code: ' . $e->getCode();

                    // Stop application :(
                    // No connection, reached limit connections etc. so no point to keep it running
                    exit;
                }
            }
            return $this->databaseW;
        }
        else{
            if (!$this->databaseR) {

                try {
                    $options = array(PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ, PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING);
                    $this->databaseR = new PDO(
                    Config::get('DB_TYPE') . ':host=' . Config::get('DB_HOST') . ';dbname=' .
                    Config::get('DB_NAME') . ';port=' . Config::get('DB_PORT') . ';charset=' . Config::get('DB_CHARSET'),
                    Config::get('DB_USER_R'), Config::get('DB_PASS_R'), $options
                    );
                } catch (PDOException $e) {

                    // Echo custom message. Echo error code gives you some info.
                    echo 'Database connection can not be estabilished. Please try again later.' . '<br>';
                    echo 'Error code: ' . $e->getCode();

                    // Stop application :(
                    // No connection, reached limit connections etc. so no point to keep it running
                    exit;
                }
            }
            return $this->databaseR;
        }
    }
}

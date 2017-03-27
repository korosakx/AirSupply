/**
 * Méthode qui retourne l'objet XMLHttpRequest en fonction du navigateur.
 */
function getXMLHttpRequest()
	{
	var xhr = null;

	// Firefox et bien d'autres.
	if (window.XMLHttpRequest)
		xhr = new XMLHttpRequest();
	else

	// Internet Explorer.
	if (window.ActiveXObject)
		{
		try	{
			xhr = new ActiveXObject("Msxml2.XMLHTTP");
			}
		catch (e)
			{
			xhr = new ActiveXObject("Microsoft.XMLHTTP");
			}
		}

	// XMLHttpRequest non supporté.
	else
		{
		alert("Votre navigateur ne supporte pas l'objet XmlHttpRequest.");
		xhr = false;
		}

	return xhr;
	}


/**
 * Cette méthode "Ajax" affiche le XML.
 *
 * On utilise la propriété 'responseText' de l'objet XMLHttpRequest afin
 * de récupérer sous forme de texte le flux envoyé par le serveur.
 */
function afficheXML ()
	{
	// Objet XMLHttpRequest.
	var xhr = getXMLHttpRequest();

	// On précise ce que l'on va faire quand on aura reçu la réponse du serveur.
	xhr.onreadystatechange = function()
		{
		// Si l'on a tout reçu et que la requête http s'est bien passée.
		if (xhr.readyState === 4 && xhr.status === 200)
			{
			// Elément html que l'on va mettre à jour.
			var elt = document.getElementById("zone");
			alert(xhr.responseText);
			}
		};

	// Requête au serveur avec les paramètres éventuels.
        var file = this.files[0];
        var formData = new FormData();
        formData.append("thefile", file);
	xhr.open("POST","UploadServlet",true);
	xhr.send(formData);
	}


/**
 * Cette méthode "Ajax" affiche la liste des auteurs.
 *
 * On utilise la propriété 'responseXML' de l'objet XMLHttpRequest afin
 * de récupérer sous forme d'arbre DOM le document XML envoyé par le serveur.
 *


/**
 * Cette méthode "Ajax" permet de tester les paramètres passés par l'url.
 */
function testEncodeUrl ()
	{
	// Objet XMLHttpRequest.
	var xhr = getXMLHttpRequest();

	// On précise ce que l'on va faire quand on aura reçu la réponse du serveur.
	xhr.onreadystatechange = function()
		{
		// Si l'on a tout reçu et que la requête http s'est bien passée.
		if (xhr.readyState === 4 && xhr.status === 200)
			{
			// Elément html que l'on va mettre à jour.
			document.getElementById("recue").value = xhr.responseXML.getElementsByTagName("msg")[0].firstChild.nodeValue ;
			}
		};

	// Requête au serveur avec les paramètres éventuels.
	var param = "texte=" + encodeURIComponent(document.getElementById("envoie").value);
	var url = "ServletEncode";
	alert(url + "?" + param);

	xhr.open("POST",url,true);
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.send(param);
	}
